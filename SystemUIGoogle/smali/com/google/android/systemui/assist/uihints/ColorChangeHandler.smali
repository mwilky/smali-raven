.class public final Lcom/google/android/systemui/assist/uihints/ColorChangeHandler;
.super Ljava/lang/Object;
.source "ColorChangeHandler.java"

# interfaces
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfoListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mIsDark:Z

.field public mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/ColorChangeHandler;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onConfigInfo(Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfo;)V
    .locals 0

    iget-object p1, p1, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfo;->onColorChanged:Landroid/app/PendingIntent;

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/ColorChangeHandler;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/ColorChangeHandler;->sendColor()V

    return-void
.end method

.method public final sendColor()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/ColorChangeHandler;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-boolean v1, p0, Lcom/google/android/systemui/assist/uihints/ColorChangeHandler;->mIsDark:Z

    const-string v2, "is_dark"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/ColorChangeHandler;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/ColorChangeHandler;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "ColorChangeHandler"

    const-string v0, "SysUI assist UI color changed PendingIntent canceled"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
