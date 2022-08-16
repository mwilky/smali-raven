.class public final Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfo;
.super Ljava/lang/Object;
.source "NgaMessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigInfo"
.end annotation


# instance fields
.field public final configurationCallback:Landroid/app/PendingIntent;

.field public final ngaIsAssistant:Z

.field public onColorChanged:Landroid/app/PendingIntent;

.field public final onKeyboardShowingChange:Landroid/app/PendingIntent;

.field public final onTaskChange:Landroid/app/PendingIntent;

.field public final onTouchInside:Landroid/app/PendingIntent;

.field public final onTouchOutside:Landroid/app/PendingIntent;

.field public final sysUiIsNgaUi:Z


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "is_available"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "nga_is_assistant"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfo;->ngaIsAssistant:Z

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfo;->sysUiIsNgaUi:Z

    const-string v0, "color_changed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfo;->onColorChanged:Landroid/app/PendingIntent;

    const-string/jumbo v0, "touch_outside"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfo;->onTouchOutside:Landroid/app/PendingIntent;

    const-string/jumbo v0, "touch_inside"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfo;->onTouchInside:Landroid/app/PendingIntent;

    const-string/jumbo v0, "task_stack_changed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfo;->onTaskChange:Landroid/app/PendingIntent;

    const-string v0, "keyboard_showing_changed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfo;->onKeyboardShowingChange:Landroid/app/PendingIntent;

    const-string v0, "configuration"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfo;->configurationCallback:Landroid/app/PendingIntent;

    return-void
.end method
