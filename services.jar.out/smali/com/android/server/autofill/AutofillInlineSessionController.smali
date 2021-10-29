.class final Lcom/android/server/autofill/AutofillInlineSessionController;
.super Ljava/lang/Object;
.source "AutofillInlineSessionController.java"


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private final mHandler:Landroid/os/Handler;

.field private mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

.field private final mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

.field private final mLock:Ljava/lang/Object;

.field private mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

.field private final mUiCallback:Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;

.field private final mUserId:I


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerInternal;ILandroid/content/ComponentName;Landroid/os/Handler;Ljava/lang/Object;Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    iput p2, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mUserId:I

    iput-object p3, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mComponentName:Landroid/content/ComponentName;

    iput-object p4, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mLock:Ljava/lang/Object;

    iput-object p6, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mUiCallback:Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;

    return-void
.end method

.method private requestImeToShowInlineSuggestionsLocked()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->onInlineSuggestionsResponseLocked(Lcom/android/server/autofill/ui/InlineFillUi;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method destroyLocked(Landroid/view/autofill/AutofillId;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/autofill/ui/InlineFillUi;->emptyUi(Landroid/view/autofill/AutofillId;)Lcom/android/server/autofill/ui/InlineFillUi;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->onInlineSuggestionsResponseLocked(Lcom/android/server/autofill/ui/InlineFillUi;)Z

    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->destroySessionLocked()V

    iput-object v1, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    :cond_0
    iput-object v1, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    return-void
.end method

.method disableFilterMatching(Landroid/view/autofill/AutofillId;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/InlineFillUi;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/InlineFillUi;->disableFilterMatching()V

    :cond_0
    return-void
.end method

.method filterInlineFillUiLocked(Landroid/view/autofill/AutofillId;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/InlineFillUi;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    invoke-virtual {v0, p2}, Lcom/android/server/autofill/ui/InlineFillUi;->setFilterText(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/autofill/AutofillInlineSessionController;->requestImeToShowInlineSuggestionsLocked()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method getInlineSuggestionsRequestLocked()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->getInlineSuggestionsRequestLocked()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method hideInlineSuggestionsUiLocked(Landroid/view/autofill/AutofillId;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/autofill/ui/InlineFillUi;->emptyUi(Landroid/view/autofill/AutofillId;)Lcom/android/server/autofill/ui/InlineFillUi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->onInlineSuggestionsResponseLocked(Lcom/android/server/autofill/ui/InlineFillUi;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method onCreateInlineSuggestionsRequestLocked(Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/autofill/AutofillId;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->destroySessionLocked()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    new-instance v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    iget-object v2, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    iget v3, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mUserId:I

    iget-object v4, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mComponentName:Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mLock:Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mUiCallback:Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;

    move-object v1, v0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v1 .. v10}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;-><init>(Lcom/android/server/inputmethod/InputMethodManagerInternal;ILandroid/content/ComponentName;Landroid/os/Handler;Ljava/lang/Object;Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;Landroid/os/Bundle;Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;)V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->onCreateInlineSuggestionsRequestLocked()V

    return-void
.end method

.method resetInlineFillUiLocked()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->resetInlineFillUiLocked()V

    :cond_0
    return-void
.end method

.method setInlineFillUiLocked(Lcom/android/server/autofill/ui/InlineFillUi;)Z
    .locals 1

    iput-object p1, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    invoke-direct {p0}, Lcom/android/server/autofill/AutofillInlineSessionController;->requestImeToShowInlineSuggestionsLocked()Z

    move-result v0

    return v0
.end method
