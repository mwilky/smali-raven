.class public final enum Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;
.super Ljava/lang/Enum;
.source "ConstraintAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AttributeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

.field public static final enum BOOLEAN_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

.field public static final enum COLOR_DRAWABLE_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

.field public static final enum COLOR_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

.field public static final enum DIMENSION_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

.field public static final enum FLOAT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

.field public static final enum INT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

.field public static final enum STRING_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    const/4 v1, 0x0

    const-string v2, "INT_TYPE"

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;-><init>(ILjava/lang/String;)V

    sput-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->INT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    new-instance v2, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    const/4 v3, 0x1

    const-string v4, "FLOAT_TYPE"

    invoke-direct {v2, v3, v4}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;-><init>(ILjava/lang/String;)V

    sput-object v2, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->FLOAT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    new-instance v4, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    const/4 v5, 0x2

    const-string v6, "COLOR_TYPE"

    invoke-direct {v4, v5, v6}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;-><init>(ILjava/lang/String;)V

    sput-object v4, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->COLOR_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    new-instance v6, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    const/4 v7, 0x3

    const-string v8, "COLOR_DRAWABLE_TYPE"

    invoke-direct {v6, v7, v8}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;-><init>(ILjava/lang/String;)V

    sput-object v6, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->COLOR_DRAWABLE_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    new-instance v8, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    const/4 v9, 0x4

    const-string v10, "STRING_TYPE"

    invoke-direct {v8, v9, v10}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;-><init>(ILjava/lang/String;)V

    sput-object v8, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->STRING_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    new-instance v10, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    const/4 v11, 0x5

    const-string v12, "BOOLEAN_TYPE"

    invoke-direct {v10, v11, v12}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;-><init>(ILjava/lang/String;)V

    sput-object v10, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->BOOLEAN_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    new-instance v12, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    const/4 v13, 0x6

    const-string v14, "DIMENSION_TYPE"

    invoke-direct {v12, v13, v14}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;-><init>(ILjava/lang/String;)V

    sput-object v12, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->DIMENSION_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    const/4 v14, 0x7

    new-array v14, v14, [Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    aput-object v0, v14, v1

    aput-object v2, v14, v3

    aput-object v4, v14, v5

    aput-object v6, v14, v7

    aput-object v8, v14, v9

    aput-object v10, v14, v11

    aput-object v12, v14, v13

    sput-object v14, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->$VALUES:[Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;
    .locals 1

    const-class v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    return-object p0
.end method

.method public static values()[Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;
    .locals 1

    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->$VALUES:[Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    invoke-virtual {v0}, [Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    return-object v0
.end method
