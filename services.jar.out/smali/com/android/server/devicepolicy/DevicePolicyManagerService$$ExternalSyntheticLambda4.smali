.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Landroid/content/ComponentName;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda4;->f$1:Landroid/content/ComponentName;

    iput p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda4;->f$2:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda4;->f$1:Landroid/content/ComponentName;

    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda4;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->$r8$lambda$uAvbNfHSewgPHGPDeA7h0Bm3m-k(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;I)V

    return-void
.end method
