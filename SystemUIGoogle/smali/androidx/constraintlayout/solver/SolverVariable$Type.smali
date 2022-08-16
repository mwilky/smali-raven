.class public final enum Landroidx/constraintlayout/solver/SolverVariable$Type;
.super Ljava/lang/Enum;
.source "SolverVariable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/SolverVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/solver/SolverVariable$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Landroidx/constraintlayout/solver/SolverVariable$Type;

.field public static final enum ERROR:Landroidx/constraintlayout/solver/SolverVariable$Type;

.field public static final enum SLACK:Landroidx/constraintlayout/solver/SolverVariable$Type;

.field public static final enum UNKNOWN:Landroidx/constraintlayout/solver/SolverVariable$Type;

.field public static final enum UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Landroidx/constraintlayout/solver/SolverVariable$Type;

    const/4 v1, 0x0

    const-string v2, "UNRESTRICTED"

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/solver/SolverVariable$Type;-><init>(ILjava/lang/String;)V

    sput-object v0, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    new-instance v2, Landroidx/constraintlayout/solver/SolverVariable$Type;

    const/4 v3, 0x1

    const-string v4, "CONSTANT"

    invoke-direct {v2, v3, v4}, Landroidx/constraintlayout/solver/SolverVariable$Type;-><init>(ILjava/lang/String;)V

    new-instance v4, Landroidx/constraintlayout/solver/SolverVariable$Type;

    const/4 v5, 0x2

    const-string v6, "SLACK"

    invoke-direct {v4, v5, v6}, Landroidx/constraintlayout/solver/SolverVariable$Type;-><init>(ILjava/lang/String;)V

    sput-object v4, Landroidx/constraintlayout/solver/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/solver/SolverVariable$Type;

    new-instance v6, Landroidx/constraintlayout/solver/SolverVariable$Type;

    const/4 v7, 0x3

    const-string v8, "ERROR"

    invoke-direct {v6, v7, v8}, Landroidx/constraintlayout/solver/SolverVariable$Type;-><init>(ILjava/lang/String;)V

    sput-object v6, Landroidx/constraintlayout/solver/SolverVariable$Type;->ERROR:Landroidx/constraintlayout/solver/SolverVariable$Type;

    new-instance v8, Landroidx/constraintlayout/solver/SolverVariable$Type;

    const/4 v9, 0x4

    const-string v10, "UNKNOWN"

    invoke-direct {v8, v9, v10}, Landroidx/constraintlayout/solver/SolverVariable$Type;-><init>(ILjava/lang/String;)V

    sput-object v8, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNKNOWN:Landroidx/constraintlayout/solver/SolverVariable$Type;

    const/4 v10, 0x5

    new-array v10, v10, [Landroidx/constraintlayout/solver/SolverVariable$Type;

    aput-object v0, v10, v1

    aput-object v2, v10, v3

    aput-object v4, v10, v5

    aput-object v6, v10, v7

    aput-object v8, v10, v9

    sput-object v10, Landroidx/constraintlayout/solver/SolverVariable$Type;->$VALUES:[Landroidx/constraintlayout/solver/SolverVariable$Type;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable$Type;
    .locals 1

    const-class v0, Landroidx/constraintlayout/solver/SolverVariable$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/solver/SolverVariable$Type;

    return-object p0
.end method

.method public static values()[Landroidx/constraintlayout/solver/SolverVariable$Type;
    .locals 1

    sget-object v0, Landroidx/constraintlayout/solver/SolverVariable$Type;->$VALUES:[Landroidx/constraintlayout/solver/SolverVariable$Type;

    invoke-virtual {v0}, [Landroidx/constraintlayout/solver/SolverVariable$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/SolverVariable$Type;

    return-object v0
.end method
