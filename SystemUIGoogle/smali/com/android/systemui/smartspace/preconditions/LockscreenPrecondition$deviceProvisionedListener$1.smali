.class public final Lcom/android/systemui/smartspace/preconditions/LockscreenPrecondition$deviceProvisionedListener$1;
.super Ljava/lang/Object;
.source "LockscreenPrecondition.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/smartspace/preconditions/LockscreenPrecondition;-><init>(Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/util/concurrency/Execution;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/smartspace/preconditions/LockscreenPrecondition;


# direct methods
.method public constructor <init>(Lcom/android/systemui/smartspace/preconditions/LockscreenPrecondition;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/smartspace/preconditions/LockscreenPrecondition$deviceProvisionedListener$1;->this$0:Lcom/android/systemui/smartspace/preconditions/LockscreenPrecondition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDeviceProvisionedChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/smartspace/preconditions/LockscreenPrecondition$deviceProvisionedListener$1;->this$0:Lcom/android/systemui/smartspace/preconditions/LockscreenPrecondition;

    invoke-virtual {p0}, Lcom/android/systemui/smartspace/preconditions/LockscreenPrecondition;->updateDeviceReadiness()V

    return-void
.end method

.method public final onUserSetupChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/smartspace/preconditions/LockscreenPrecondition$deviceProvisionedListener$1;->this$0:Lcom/android/systemui/smartspace/preconditions/LockscreenPrecondition;

    invoke-virtual {p0}, Lcom/android/systemui/smartspace/preconditions/LockscreenPrecondition;->updateDeviceReadiness()V

    return-void
.end method
