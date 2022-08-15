.class public final synthetic Lcom/android/server/autofill/Session$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/Session;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:[Landroid/view/autofill/AutofillId;

.field public final synthetic f$5:[Ljava/lang/String;

.field public final synthetic f$6:[Ljava/lang/String;

.field public final synthetic f$7:Ljava/util/ArrayList;

.field public final synthetic f$8:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/Session;III[Landroid/view/autofill/AutofillId;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/autofill/Session;

    iput p2, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda8;->f$1:I

    iput p3, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda8;->f$2:I

    iput p4, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda8;->f$3:I

    iput-object p5, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda8;->f$4:[Landroid/view/autofill/AutofillId;

    iput-object p6, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda8;->f$5:[Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda8;->f$6:[Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda8;->f$7:Ljava/util/ArrayList;

    iput-object p9, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda8;->f$8:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/autofill/Session;

    iget v1, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda8;->f$1:I

    iget v2, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda8;->f$2:I

    iget v3, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda8;->f$3:I

    iget-object v4, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda8;->f$4:[Landroid/view/autofill/AutofillId;

    iget-object v5, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda8;->f$5:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda8;->f$6:[Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda8;->f$7:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda8;->f$8:Ljava/util/ArrayList;

    move-object v9, p1

    invoke-static/range {v0 .. v9}, Lcom/android/server/autofill/Session;->$r8$lambda$3GQmtIdxpVPfLohRHhojBq-Mjms(Lcom/android/server/autofill/Session;III[Landroid/view/autofill/AutofillId;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    return-void
.end method
