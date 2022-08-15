.class public final synthetic Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/autofill/Helper$ViewNodeFilter;


# instance fields
.field public final synthetic f$0:Landroid/view/autofill/AutofillId;


# direct methods
.method public synthetic constructor <init>(Landroid/view/autofill/AutofillId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda1;->f$0:Landroid/view/autofill/AutofillId;

    return-void
.end method


# virtual methods
.method public final matches(Landroid/app/assist/AssistStructure$ViewNode;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda1;->f$0:Landroid/view/autofill/AutofillId;

    invoke-static {p0, p1}, Lcom/android/server/autofill/Helper;->$r8$lambda$GlJD1D5hjkYtSn_UeO8P2b5k1As(Landroid/view/autofill/AutofillId;Landroid/app/assist/AssistStructure$ViewNode;)Z

    move-result p0

    return p0
.end method
