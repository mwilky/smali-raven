.class public final synthetic Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wmshell/BubblesManager$5;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wmshell/BubblesManager$5;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/wmshell/BubblesManager$5;

    iput-boolean p2, p0, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda6;->f$1:Z

    const-string p1, "Bubbles"

    iput-object p1, p0, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/wmshell/BubblesManager$5;

    iget-boolean v1, p0, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda6;->f$1:Z

    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/systemui/wmshell/BubblesManager$5;->this$0:Lcom/android/systemui/wmshell/BubblesManager;

    iget-object v0, v0, Lcom/android/systemui/wmshell/BubblesManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setRequestTopUi(Ljava/lang/String;Z)V

    return-void
.end method