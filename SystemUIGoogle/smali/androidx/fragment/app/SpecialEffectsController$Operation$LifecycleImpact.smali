.class final enum Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;
.super Ljava/lang/Enum;
.source "SpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/SpecialEffectsController$Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LifecycleImpact"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

.field public static final enum ADDING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

.field public static final enum NONE:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

.field public static final enum REMOVING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v1, v2}, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;-><init>(ILjava/lang/String;)V

    sput-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->NONE:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    new-instance v2, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    const/4 v3, 0x1

    const-string v4, "ADDING"

    invoke-direct {v2, v3, v4}, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;-><init>(ILjava/lang/String;)V

    sput-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->ADDING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    new-instance v4, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    const/4 v5, 0x2

    const-string v6, "REMOVING"

    invoke-direct {v4, v5, v6}, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;-><init>(ILjava/lang/String;)V

    sput-object v4, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->REMOVING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    const/4 v6, 0x3

    new-array v6, v6, [Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    aput-object v0, v6, v1

    aput-object v2, v6, v3

    aput-object v4, v6, v5

    sput-object v6, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->$VALUES:[Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;
    .locals 1

    const-class v0, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    return-object p0
.end method

.method public static values()[Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;
    .locals 1

    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->$VALUES:[Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    invoke-virtual {v0}, [Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    return-object v0
.end method
