.class final enum Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;
.super Ljava/lang/Enum;
.source "DependencyNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

.field public static final enum BASELINE:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

.field public static final enum BOTTOM:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

.field public static final enum HORIZONTAL_DIMENSION:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

.field public static final enum LEFT:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

.field public static final enum RIGHT:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

.field public static final enum TOP:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

.field public static final enum UNKNOWN:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

.field public static final enum VERTICAL_DIMENSION:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;-><init>(ILjava/lang/String;)V

    sput-object v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->UNKNOWN:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    new-instance v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    const/4 v3, 0x1

    const-string v4, "HORIZONTAL_DIMENSION"

    invoke-direct {v2, v3, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;-><init>(ILjava/lang/String;)V

    sput-object v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->HORIZONTAL_DIMENSION:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    new-instance v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    const/4 v5, 0x2

    const-string v6, "VERTICAL_DIMENSION"

    invoke-direct {v4, v5, v6}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;-><init>(ILjava/lang/String;)V

    sput-object v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->VERTICAL_DIMENSION:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    new-instance v6, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    const/4 v7, 0x3

    const-string v8, "LEFT"

    invoke-direct {v6, v7, v8}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;-><init>(ILjava/lang/String;)V

    sput-object v6, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    new-instance v8, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    const/4 v9, 0x4

    const-string v10, "RIGHT"

    invoke-direct {v8, v9, v10}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;-><init>(ILjava/lang/String;)V

    sput-object v8, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    new-instance v10, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    const/4 v11, 0x5

    const-string v12, "TOP"

    invoke-direct {v10, v11, v12}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;-><init>(ILjava/lang/String;)V

    sput-object v10, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->TOP:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    new-instance v12, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    const/4 v13, 0x6

    const-string v14, "BOTTOM"

    invoke-direct {v12, v13, v14}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;-><init>(ILjava/lang/String;)V

    sput-object v12, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    new-instance v14, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    const/4 v15, 0x7

    const-string v13, "BASELINE"

    invoke-direct {v14, v15, v13}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;-><init>(ILjava/lang/String;)V

    sput-object v14, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    const/16 v13, 0x8

    new-array v13, v13, [Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    aput-object v0, v13, v1

    aput-object v2, v13, v3

    aput-object v4, v13, v5

    aput-object v6, v13, v7

    aput-object v8, v13, v9

    aput-object v10, v13, v11

    const/4 v0, 0x6

    aput-object v12, v13, v0

    aput-object v14, v13, v15

    sput-object v13, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->$VALUES:[Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;
    .locals 1

    const-class v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    return-object p0
.end method

.method public static values()[Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;
    .locals 1

    sget-object v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->$VALUES:[Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    invoke-virtual {v0}, [Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    return-object v0
.end method
