.class final Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper$H;
.super Landroid/os/Handler;
.source "HapticsRingReceiverHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;


# direct methods
.method private constructor <init>(Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper$H;->this$0:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper$H;-><init>(Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper$H;->this$0:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->onChange()V

    :goto_0
    return-void
.end method
