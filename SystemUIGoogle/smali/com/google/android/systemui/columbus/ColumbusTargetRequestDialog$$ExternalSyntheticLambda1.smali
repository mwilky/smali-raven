.class public final synthetic Lcom/google/android/systemui/columbus/ColumbusTargetRequestDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestDialog;

.field public final synthetic f$1:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/columbus/ColumbusTargetRequestDialog;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestDialog$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestDialog;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestDialog$$ExternalSyntheticLambda1;->f$1:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestDialog$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/columbus/ColumbusTargetRequestDialog;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestDialog$$ExternalSyntheticLambda1;->f$1:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-interface {p0, p1, v0}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
