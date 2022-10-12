import enum

# Question relations
class QuestionRelations(enum.IntEnum):
    IDENTICAL = 1
    ONE_HOP_TO_THE_RIGHT = 2
    ONE_HOP_TO_THE_LEFT = 3
    TWO_HOP_TO_THE_RIGHT = 4
    TWO_HOP_TO_THE_LEFT = 5
    
    @staticmethod
    def inverse_pairs():
        return [
            (QuestionRelations.IDENTICAL, QuestionRelations.IDENTICAL),
            (QuestionRelations.ONE_HOP_TO_THE_RIGHT, QuestionRelations.ONE_HOP_TO_THE_LEFT),
            (QuestionRelations.TWO_HOP_TO_THE_RIGHT, QuestionRelations.TWO_HOP_TO_THE_LEFT),
        ]

# Schema relations
class SchemaRelations(enum.IntEnum):
    # COLUMN to COLUMN
    BASE = len(QuestionRelations)
    CC_DEFAULT = BASE + 1
    CC_IDENTICAL = BASE + 2
    CC_SAME_TABLE = BASE + 3
    CC_FOREIGN_KEY_FORWARD = BASE + 4
    CC_FOREIGN_KEY_BACKWARD = BASE + 5
    # TABLE to TABLE
    TT_DEFAULT = BASE + 6
    TT_IDENTICAL = BASE + 7
    TT_FOREIGN_KEY_FORWARD = BASE + 8
    TT_FOREIGN_KEY_BACKWARD = BASE + 9
    # TABLE TO COLUMN
    TC_DEFAULT = BASE + 10
    TC_PRIMARY_KEY = BASE + 11
    TC_FOREIGN_KEY = BASE + 12
    TC_CONTAINS_AND_NON_KEY = BASE + 13
    # COLUMN to TABLE
    CT_DEFAULT = BASE + 14
    CT_PRIMARY_KEY = BASE + 15
    CT_FOREIGN_KEY = BASE + 16
    CT_CONTAINS_AND_NON_KEY = BASE + 17

    @staticmethod
    def inverse_pairs():
        return [
            (SchemaRelations.CC_DEFAULT, SchemaRelations.CC_DEFAULT),
            (SchemaRelations.CC_IDENTICAL, SchemaRelations.CC_IDENTICAL),
            (SchemaRelations.CC_SAME_TABLE, SchemaRelations.CC_SAME_TABLE),
            (SchemaRelations.CC_FOREIGN_KEY_FORWARD, SchemaRelations.CC_FOREIGN_KEY_BACKWARD),
            (SchemaRelations.TT_DEFAULT, SchemaRelations.TT_DEFAULT),
            (SchemaRelations.TT_IDENTICAL, SchemaRelations.TT_IDENTICAL),
            (SchemaRelations.TT_FOREIGN_KEY_FORWARD, SchemaRelations.TT_FOREIGN_KEY_BACKWARD),
            (SchemaRelations.TC_DEFAULT, SchemaRelations.CT_DEFAULT),
            (SchemaRelations.TC_FOREIGN_KEY, SchemaRelations.CT_FOREIGN_KEY),
            (SchemaRelations.TC_PRIMARY_KEY, SchemaRelations.CT_PRIMARY_KEY),
            (SchemaRelations.TC_CONTAINS_AND_NON_KEY, SchemaRelations.CT_CONTAINS_AND_NON_KEY),
        ]

# Schema linking relations
class SchemaLinkingRelations(enum.IntEnum):
    BASE = len(QuestionRelations) + len(SchemaRelations)
    # Question to column
    QC_DEFAULT = BASE + 1
    QC_EXATCH_MATCH = BASE + 2
    QC_PARTIAL_MATCH = BASE + 3
    QC_VALUE_MATCH = BASE + 4
    # Question to table
    QT_DEFAULT = BASE + 5
    QT_EXATCH_MATCH = BASE + 6
    QT_PARTIAL_MATCH = BASE + 7
    QT_VALUE_MATCH = BASE + 8
    # column to question
    CQ_DEFAULT = BASE + 9
    CQ_EXATCH_MATCH = BASE + 10
    CQ_PARTIAL_MATCH = BASE + 11
    CQ_VALUE_MATCH = BASE + 12
    # table to question
    TQ_DEFAULT = BASE + 13
    TQ_EXATCH_MATCH = BASE + 14
    TQ_PARTIAL_MATCH = BASE + 15
    TQ_VALUE_MATCH = BASE + 16
    
    @staticmethod
    def inverse_pairs():
        return [
            (SchemaLinkingRelations.QC_DEFAULT, SchemaLinkingRelations.CQ_DEFAULT),
            (SchemaLinkingRelations.QC_EXATCH_MATCH, SchemaLinkingRelations.CQ_EXATCH_MATCH),
            (SchemaLinkingRelations.QC_PARTIAL_MATCH, SchemaLinkingRelations.CQ_PARTIAL_MATCH),
            (SchemaLinkingRelations.QC_VALUE_MATCH, SchemaLinkingRelations.CQ_VALUE_MATCH),
            (SchemaLinkingRelations.QT_DEFAULT, SchemaLinkingRelations.TQ_DEFAULT),
            (SchemaLinkingRelations.QT_EXATCH_MATCH, SchemaLinkingRelations.TQ_EXATCH_MATCH),
            (SchemaLinkingRelations.QT_PARTIAL_MATCH, SchemaLinkingRelations.TQ_PARTIAL_MATCH),
            (SchemaLinkingRelations.QT_VALUE_MATCH, SchemaLinkingRelations.TQ_VALUE_MATCH),
        ]

TOTAL_RELATION_NUM = len(SchemaLinkingRelations) + len(SchemaRelations) + len(QuestionRelations)
ALL_INVERSE_PAIRS = QuestionRelations.inverse_pairs() + SchemaRelations.inverse_pairs() + SchemaLinkingRelations.inverse_pairs()


def inverse(relation):
    for inverse_pair in ALL_INVERSE_PAIRS:
        relation1, relation2 = inverse_pair
        if relation == relation1:
            return relation2
        elif relation == relation2:
            return relation1
    raise ValueError(f"Got relation without inverse: {relation}")
