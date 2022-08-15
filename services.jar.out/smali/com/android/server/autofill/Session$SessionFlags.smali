.class public final Lcom/android/server/autofill/Session$SessionFlags;
.super Ljava/lang/Object;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SessionFlags"
.end annotation


# instance fields
.field public mAugmentedAutofillOnly:Z

.field public mAutofillDisabled:Z

.field public mExpiredResponse:Z

.field public mFillDialogDisabled:Z

.field public mInlineSupportedByService:Z

.field public mShowingSaveUi:Z

.field public final synthetic this$0:Lcom/android/server/autofill/Session;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/autofill/Session$SessionFlags;->mAugmentedAutofillOnly:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmExpiredResponse(Lcom/android/server/autofill/Session$SessionFlags;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/autofill/Session$SessionFlags;->mExpiredResponse:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFillDialogDisabled(Lcom/android/server/autofill/Session$SessionFlags;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/autofill/Session$SessionFlags;->mFillDialogDisabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInlineSupportedByService(Lcom/android/server/autofill/Session$SessionFlags;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/autofill/Session$SessionFlags;->mInlineSupportedByService:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShowingSaveUi(Lcom/android/server/autofill/Session$SessionFlags;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/autofill/Session$SessionFlags;->mShowingSaveUi:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmAugmentedAutofillOnly(Lcom/android/server/autofill/Session$SessionFlags;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/autofill/Session$SessionFlags;->mAugmentedAutofillOnly:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmAutofillDisabled(Lcom/android/server/autofill/Session$SessionFlags;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/autofill/Session$SessionFlags;->mAutofillDisabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmExpiredResponse(Lcom/android/server/autofill/Session$SessionFlags;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/autofill/Session$SessionFlags;->mExpiredResponse:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmFillDialogDisabled(Lcom/android/server/autofill/Session$SessionFlags;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/autofill/Session$SessionFlags;->mFillDialogDisabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmInlineSupportedByService(Lcom/android/server/autofill/Session$SessionFlags;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/autofill/Session$SessionFlags;->mInlineSupportedByService:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmShowingSaveUi(Lcom/android/server/autofill/Session$SessionFlags;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/autofill/Session$SessionFlags;->mShowingSaveUi:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/autofill/Session;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/autofill/Session$SessionFlags;->this$0:Lcom/android/server/autofill/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/autofill/Session;Lcom/android/server/autofill/Session$SessionFlags-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session$SessionFlags;-><init>(Lcom/android/server/autofill/Session;)V

    return-void
.end method
