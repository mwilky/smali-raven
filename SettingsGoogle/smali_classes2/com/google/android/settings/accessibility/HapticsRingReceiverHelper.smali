.class public Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;
.super Ljava/lang/Object;
.source "HapticsRingReceiverHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper$RingReceiver;,
        Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper$H;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper$H;

.field private mHelper:Lcom/android/settings/notification/AudioHelper;

.field private final mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper$RingReceiver;

.field private mRingerMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper$RingReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper$RingReceiver;-><init>(Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper$1;)V

    iput-object v0, p0, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper$RingReceiver;

    new-instance v0, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper$H;

    invoke-direct {v0, p0, v1}, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper$H;-><init>(Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper$1;)V

    iput-object v0, p0, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->mHandler:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper$H;

    iput-object p1, p0, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/settings/notification/AudioHelper;

    invoke-direct {v0, p1}, Lcom/android/settings/notification/AudioHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {v0}, Lcom/android/settings/notification/AudioHelper;->getRingerModeInternal()I

    move-result p1

    iput p1, p0, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->mRingerMode:I

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;)Lcom/android/settings/notification/AudioHelper;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->mHelper:Lcom/android/settings/notification/AudioHelper;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;)I
    .locals 0

    iget p0, p0, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->mRingerMode:I

    return p0
.end method

.method static synthetic access$402(Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->mRingerMode:I

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;)Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper$H;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->mHandler:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper$H;

    return-object p0
.end method


# virtual methods
.method public getRingerMode()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {p0}, Lcom/android/settings/notification/AudioHelper;->getRingerModeInternal()I

    move-result p0

    return p0
.end method

.method public isRingerModeSilent()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {p0}, Lcom/android/settings/notification/AudioHelper;->getRingerModeInternal()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onChange()V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public register(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper$RingReceiver;

    invoke-virtual {p0, p1}, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper$RingReceiver;->register(Z)V

    return-void
.end method
