.class public final Lcom/android/systemui/qs/FgsManagerController$init$1$3;
.super Landroid/content/BroadcastReceiver;
.source "FgsManagerController.kt"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/FgsManagerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/FgsManagerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerController$init$1$3;->this$0:Lcom/android/systemui/qs/FgsManagerController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SHOW_FOREGROUND_SERVICE_MANAGER"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerController$init$1$3;->this$0:Lcom/android/systemui/qs/FgsManagerController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/FgsManagerController;->showDialog(Landroid/view/View;)V

    :cond_0
    return-void
.end method
