.class public final Lcom/google/android/systemui/communal/dock/callbacks/DockingAnimationCallback;
.super Ljava/lang/Object;
.source "DockingAnimationCallback.java"

# interfaces
.implements Lcom/android/systemui/util/condition/Monitor$Callback;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAnimationTransitionDelayMs:I

.field public final mContext:Landroid/content/Context;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLoggerImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "DockingAnimation"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/communal/dock/callbacks/DockingAnimationCallback;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/communal/dock/callbacks/DockingAnimationCallback;->mUiEventLogger:Lcom/android/internal/logging/UiEventLoggerImpl;

    iput-object p1, p0, Lcom/google/android/systemui/communal/dock/callbacks/DockingAnimationCallback;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/google/android/systemui/communal/dock/callbacks/DockingAnimationCallback;->mAnimationTransitionDelayMs:I

    return-void
.end method


# virtual methods
.method public getChargingAnimation()Lcom/android/systemui/charging/WirelessChargingAnimation;
    .locals 6

    iget-object v1, p0, Lcom/google/android/systemui/communal/dock/callbacks/DockingAnimationCallback;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/systemui/communal/dock/callbacks/DockingAnimationCallback;->mUiEventLogger:Lcom/android/internal/logging/UiEventLoggerImpl;

    new-instance p0, Lcom/android/systemui/charging/WirelessChargingAnimation;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/charging/WirelessChargingAnimation;-><init>(Landroid/content/Context;IILcom/android/systemui/statusbar/phone/CentralSurfacesImpl$7;Lcom/android/internal/logging/UiEventLoggerImpl;)V

    return-object p0
.end method

.method public final onConditionsChanged(Z)V
    .locals 2

    sget-boolean v0, Lcom/google/android/systemui/communal/dock/callbacks/DockingAnimationCallback;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConditionsChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DockingAnimation"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/systemui/communal/dock/callbacks/DockingAnimationCallback;->showChargingAnimation()V

    :cond_1
    return-void
.end method

.method public showChargingAnimation()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/systemui/communal/dock/callbacks/DockingAnimationCallback;->getChargingAnimation()Lcom/android/systemui/charging/WirelessChargingAnimation;

    move-result-object v0

    iget p0, p0, Lcom/google/android/systemui/communal/dock/callbacks/DockingAnimationCallback;->mAnimationTransitionDelayMs:I

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/charging/WirelessChargingAnimation;->show(J)V

    return-void
.end method
