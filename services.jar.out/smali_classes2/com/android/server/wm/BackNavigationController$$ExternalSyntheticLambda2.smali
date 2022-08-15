.class public final synthetic Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/BackNavigationController;

.field public final synthetic f$1:Lcom/android/server/wm/WindowContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/BackNavigationController;Lcom/android/server/wm/WindowContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/BackNavigationController;

    iput-object p2, p0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/wm/WindowContainer;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/BackNavigationController;

    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/wm/WindowContainer;

    invoke-static {v0, p0}, Lcom/android/server/wm/BackNavigationController;->$r8$lambda$Za5oSliA02eqN2Lmc9kMcm9LtrE(Lcom/android/server/wm/BackNavigationController;Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method
