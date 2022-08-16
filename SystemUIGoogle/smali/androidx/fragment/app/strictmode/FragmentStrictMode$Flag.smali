.class final enum Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;
.super Ljava/lang/Enum;
.source "FragmentStrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/strictmode/FragmentStrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Flag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

.field public static final enum DETECT_FRAGMENT_REUSE:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

.field public static final enum DETECT_FRAGMENT_TAG_USAGE:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

.field public static final enum DETECT_WRONG_FRAGMENT_CONTAINER:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

.field public static final enum PENALTY_DEATH:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

.field public static final enum PENALTY_LOG:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    const/4 v1, 0x0

    const-string v2, "PENALTY_LOG"

    invoke-direct {v0, v1, v2}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;-><init>(ILjava/lang/String;)V

    sput-object v0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->PENALTY_LOG:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    new-instance v2, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    const/4 v3, 0x1

    const-string v4, "PENALTY_DEATH"

    invoke-direct {v2, v3, v4}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;-><init>(ILjava/lang/String;)V

    sput-object v2, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->PENALTY_DEATH:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    new-instance v4, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    const/4 v5, 0x2

    const-string v6, "DETECT_FRAGMENT_REUSE"

    invoke-direct {v4, v5, v6}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;-><init>(ILjava/lang/String;)V

    sput-object v4, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_FRAGMENT_REUSE:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    new-instance v6, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    const/4 v7, 0x3

    const-string v8, "DETECT_FRAGMENT_TAG_USAGE"

    invoke-direct {v6, v7, v8}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;-><init>(ILjava/lang/String;)V

    sput-object v6, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_FRAGMENT_TAG_USAGE:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    new-instance v8, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    const/4 v9, 0x4

    const-string v10, "DETECT_RETAIN_INSTANCE_USAGE"

    invoke-direct {v8, v9, v10}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;-><init>(ILjava/lang/String;)V

    new-instance v10, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    const/4 v11, 0x5

    const-string v12, "DETECT_SET_USER_VISIBLE_HINT"

    invoke-direct {v10, v11, v12}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;-><init>(ILjava/lang/String;)V

    new-instance v12, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    const/4 v13, 0x6

    const-string v14, "DETECT_TARGET_FRAGMENT_USAGE"

    invoke-direct {v12, v13, v14}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;-><init>(ILjava/lang/String;)V

    new-instance v14, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    const/4 v15, 0x7

    const-string v13, "DETECT_WRONG_FRAGMENT_CONTAINER"

    invoke-direct {v14, v15, v13}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;-><init>(ILjava/lang/String;)V

    sput-object v14, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->DETECT_WRONG_FRAGMENT_CONTAINER:Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    const/16 v13, 0x8

    new-array v13, v13, [Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    aput-object v0, v13, v1

    aput-object v2, v13, v3

    aput-object v4, v13, v5

    aput-object v6, v13, v7

    aput-object v8, v13, v9

    aput-object v10, v13, v11

    const/4 v0, 0x6

    aput-object v12, v13, v0

    aput-object v14, v13, v15

    sput-object v13, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->$VALUES:[Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;
    .locals 1

    const-class v0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    return-object p0
.end method

.method public static values()[Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;
    .locals 1

    sget-object v0, Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->$VALUES:[Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    invoke-virtual {v0}, [Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;

    return-object v0
.end method
