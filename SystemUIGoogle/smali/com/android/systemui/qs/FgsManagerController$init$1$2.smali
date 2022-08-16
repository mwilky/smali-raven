.class public final Lcom/android/systemui/qs/FgsManagerController$init$1$2;
.super Ljava/lang/Object;
.source "FgsManagerController.kt"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/FgsManagerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/FgsManagerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerController$init$1$2;->this$0:Lcom/android/systemui/qs/FgsManagerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerController$init$1$2;->this$0:Lcom/android/systemui/qs/FgsManagerController;

    iget-boolean v1, v0, Lcom/android/systemui/qs/FgsManagerController;->isAvailable:Z

    const-string/jumbo v2, "task_manager_enabled"

    invoke-virtual {p1, v2, v1}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/qs/FgsManagerController;->isAvailable:Z

    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerController$init$1$2;->this$0:Lcom/android/systemui/qs/FgsManagerController;

    iget-boolean v0, p0, Lcom/android/systemui/qs/FgsManagerController;->showFooterDot:Z

    const-string/jumbo v1, "task_manager_show_footer_dot"

    invoke-virtual {p1, v1, v0}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/qs/FgsManagerController;->showFooterDot:Z

    return-void
.end method
