.class public final synthetic Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/AutoFillUI;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/AutoFillUI;ILandroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iput p2, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$1:I

    iput-object p3, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$2:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iget v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$1:I

    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$2:Landroid/os/IBinder;

    invoke-static {v0, v1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->$r8$lambda$TeRTV8jUBeOLXAk4-OCB5meGuh4(Lcom/android/server/autofill/ui/AutoFillUI;ILandroid/os/IBinder;)V

    return-void
.end method
