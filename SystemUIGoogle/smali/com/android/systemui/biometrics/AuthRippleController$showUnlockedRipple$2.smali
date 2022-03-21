.class final Lcom/android/systemui/biometrics/AuthRippleController$showUnlockedRipple$2;
.super Ljava/lang/Object;
.source "AuthRippleController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/biometrics/AuthRippleController;->showUnlockedRipple()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/biometrics/AuthRippleController;


# direct methods
.method constructor <init>(Lcom/android/systemui/biometrics/AuthRippleController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleController$showUnlockedRipple$2;->this$0:Lcom/android/systemui/biometrics/AuthRippleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController$showUnlockedRipple$2;->this$0:Lcom/android/systemui/biometrics/AuthRippleController;

    invoke-static {v0}, Lcom/android/systemui/biometrics/AuthRippleController;->access$getNotificationShadeWindowController$p(Lcom/android/systemui/biometrics/AuthRippleController;)Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleController$showUnlockedRipple$2;->this$0:Lcom/android/systemui/biometrics/AuthRippleController;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setForcePluginOpen(ZLjava/lang/Object;)V

    return-void
.end method
