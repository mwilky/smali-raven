.class public final Lcom/android/systemui/dock/DockManagerImpl;
.super Ljava/lang/Object;
.source "DockManagerImpl.java"

# interfaces
.implements Lcom/android/systemui/dock/DockManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addAlignmentStateListener(Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda2;)V
    .locals 0

    return-void
.end method

.method public final addListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V
    .locals 0

    return-void
.end method

.method public final isDocked()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isHidden()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final removeListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V
    .locals 0

    return-void
.end method
