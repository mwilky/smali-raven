.class public final synthetic Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/dreamliner/DockObserver;

.field public final synthetic f$1:Lcom/android/systemui/dock/DockManager$DockEventListener;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/dreamliner/DockObserver;Lcom/android/systemui/dock/DockManager$DockEventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/dock/DockManager$DockEventListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/dock/DockManager$DockEventListener;

    invoke-static {v0, p0}, Lcom/google/android/systemui/dreamliner/DockObserver;->$r8$lambda$0DiK3Rj89ujrATdW8grLJKFfv_g(Lcom/google/android/systemui/dreamliner/DockObserver;Lcom/android/systemui/dock/DockManager$DockEventListener;)V

    return-void
.end method
