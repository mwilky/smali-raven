.class public final synthetic Lcom/android/systemui/qs/tiles/RotationLockTile$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/RotationLockTile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/RotationLockTile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    return-void
.end method


# virtual methods
.method public final onSensorPrivacyChanged(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method
