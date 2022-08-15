.class public final synthetic Lcom/android/server/autofill/Session$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/Session;

.field public final synthetic f$1:Landroid/view/autofill/AutofillId;

.field public final synthetic f$2:Ljava/util/function/Consumer;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/Session;Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/autofill/Session;

    iput-object p2, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda2;->f$1:Landroid/view/autofill/AutofillId;

    iput-object p3, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda2;->f$2:Ljava/util/function/Consumer;

    iput p4, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda2;->f$3:I

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/autofill/Session;

    iget-object v1, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda2;->f$1:Landroid/view/autofill/AutofillId;

    iget-object v2, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda2;->f$2:Ljava/util/function/Consumer;

    iget p0, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda2;->f$3:I

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/server/autofill/Session;->$r8$lambda$aFIOBhFnhAYcwA7zhhQoCgxcuRk(Lcom/android/server/autofill/Session;Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;ILandroid/os/Bundle;)V

    return-void
.end method
