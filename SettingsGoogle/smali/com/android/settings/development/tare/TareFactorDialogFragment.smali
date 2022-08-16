.class public Lcom/android/settings/development/tare/TareFactorDialogFragment;
.super Landroid/app/DialogFragment;
.source "TareFactorDialogFragment.java"


# instance fields
.field private final mFactorKey:Ljava/lang/String;

.field private final mFactorPolicy:I

.field private final mFactorTitle:Ljava/lang/String;

.field private final mFactorValue:J

.field private mFactorValueView:Landroid/widget/EditText;

.field private final mTareFactorController:Lcom/android/settings/development/tare/TareFactorController;

.field private mUnitSpinner:Landroid/widget/Spinner;


# direct methods
.method public static synthetic $r8$lambda$j4mh9YLHO5SVmSgZdog2mGVl6Xk(Lcom/android/settings/development/tare/TareFactorDialogFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/development/tare/TareFactorDialogFragment;->lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$m_P1hG9RyX57X2ek1z_f29jQDmM(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/development/tare/TareFactorDialogFragment;->lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmFactorValueView(Lcom/android/settings/development/tare/TareFactorDialogFragment;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/development/tare/TareFactorDialogFragment;->mFactorValueView:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUnitSpinner(Lcom/android/settings/development/tare/TareFactorDialogFragment;)Landroid/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/development/tare/TareFactorDialogFragment;->mUnitSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JILcom/android/settings/development/tare/TareFactorController;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/tare/TareFactorDialogFragment;->mFactorTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/development/tare/TareFactorDialogFragment;->mFactorKey:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/settings/development/tare/TareFactorDialogFragment;->mFactorValue:J

    iput p5, p0, Lcom/android/settings/development/tare/TareFactorDialogFragment;->mFactorPolicy:I

    iput-object p6, p0, Lcom/android/settings/development/tare/TareFactorDialogFragment;->mTareFactorController:Lcom/android/settings/development/tare/TareFactorController;

    return-void
.end method

.method private createDialogView()Landroid/view/View;
    .locals 9

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0600cb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d020e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/settings/development/tare/TareFactorDialogFragment;->mFactorValueView:Landroid/widget/EditText;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    const v1, 0x7f0d056a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/development/tare/TareFactorDialogFragment;->mUnitSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0100d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x1090008

    invoke-direct {v2, v3, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/settings/development/tare/TareFactorDialogFragment;->mUnitSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-wide v1, p0, Lcom/android/settings/development/tare/TareFactorDialogFragment;->mFactorValue:J

    const-wide/32 v3, 0x3b9aca00

    rem-long v5, v1, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    const-string v6, "%d"

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/development/tare/TareFactorDialogFragment;->mFactorValueView:Landroid/widget/EditText;

    new-array v8, v8, [Ljava/lang/Object;

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v8, v7

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/settings/development/tare/TareFactorDialogFragment;->mFactorValueView:Landroid/widget/EditText;

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move v7, v8

    :goto_0
    iget-object v1, p0, Lcom/android/settings/development/tare/TareFactorDialogFragment;->mUnitSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v7}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v1, p0, Lcom/android/settings/development/tare/TareFactorDialogFragment;->mUnitSpinner:Landroid/widget/Spinner;

    new-instance v2, Lcom/android/settings/development/tare/TareFactorDialogFragment$1;

    invoke-direct {v2, p0, v7}, Lcom/android/settings/development/tare/TareFactorDialogFragment$1;-><init>(Lcom/android/settings/development/tare/TareFactorDialogFragment;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object p0, p0, Lcom/android/settings/development/tare/TareFactorDialogFragment;->mFactorValueView:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/android/settings/Utils;->setEditTextCursorPosition(Landroid/widget/EditText;)V

    return-object v0
.end method

.method private synthetic lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object p1, p0, Lcom/android/settings/development/tare/TareFactorDialogFragment;->mFactorValueView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-wide v0, p0, Lcom/android/settings/development/tare/TareFactorDialogFragment;->mFactorValue:J

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object p2, p0, Lcom/android/settings/development/tare/TareFactorDialogFragment;->mUnitSpinner:Landroid/widget/Spinner;

    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const-wide/32 p1, 0x3b9aca00

    mul-long/2addr v0, p1

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'. Using "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/settings/development/tare/TareFactorDialogFragment;->mFactorValue:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " instead"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "TareDialogFragment"

    invoke-static {v2, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/settings/development/tare/TareFactorDialogFragment;->mTareFactorController:Lcom/android/settings/development/tare/TareFactorController;

    iget-object p2, p0, Lcom/android/settings/development/tare/TareFactorDialogFragment;->mFactorKey:Ljava/lang/String;

    iget p0, p0, Lcom/android/settings/development/tare/TareFactorDialogFragment;->mFactorPolicy:I

    invoke-virtual {p1, p2, v0, v1, p0}, Lcom/android/settings/development/tare/TareFactorController;->updateValue(Ljava/lang/String;JI)V

    return-void
.end method

.method private static synthetic lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/development/tare/TareFactorDialogFragment;->mFactorTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/settings/development/tare/TareFactorDialogFragment;->createDialogView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/settings/development/tare/TareFactorDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/development/tare/TareFactorDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/development/tare/TareFactorDialogFragment;)V

    const p0, 0x7f041495

    invoke-virtual {p1, p0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/android/settings/development/tare/TareFactorDialogFragment$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/settings/development/tare/TareFactorDialogFragment$$ExternalSyntheticLambda1;-><init>()V

    const/high16 v0, 0x1040000

    invoke-virtual {p0, v0, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
