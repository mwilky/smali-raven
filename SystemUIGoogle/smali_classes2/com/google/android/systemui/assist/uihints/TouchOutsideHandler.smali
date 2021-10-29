.class Lcom/google/android/systemui/assist/uihints/TouchOutsideHandler;
.super Ljava/lang/Object;
.source "TouchOutsideHandler.java"

# interfaces
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfoListener;


# instance fields
.field private mTouchOutside:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigInfo(Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfo;)V
    .locals 0

    iget-object p1, p1, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfo;->onTouchOutside:Landroid/app/PendingIntent;

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/TouchOutsideHandler;->mTouchOutside:Landroid/app/PendingIntent;

    return-void
.end method

.method onTouchOutside()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TouchOutsideHandler;->mTouchOutside:Landroid/app/PendingIntent;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "TouchOutsideHandler"

    const-string v0, "Touch outside PendingIntent canceled"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
