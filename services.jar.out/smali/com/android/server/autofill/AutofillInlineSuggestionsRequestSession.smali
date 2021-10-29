.class final Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;
.super Ljava/lang/Object;
.source "AutofillInlineSuggestionsRequestSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAutofillId:Landroid/view/autofill/AutofillId;

.field private final mComponentName:Landroid/content/ComponentName;

.field private mDestroyed:Z

.field private final mHandler:Landroid/os/Handler;

.field private mImeCurrentFieldId:Landroid/view/autofill/AutofillId;

.field private mImeInputStarted:Z

.field private mImeInputViewStarted:Z

.field private mImeRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

.field private mImeRequestConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mImeRequestReceived:Z

.field private mImeSessionInvalidated:Z

.field private mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

.field private final mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

.field private final mLock:Ljava/lang/Object;

.field private mPreviousHasNonPinSuggestionShow:Z

.field private mPreviousResponseIsNotEmpty:Ljava/lang/Boolean;

.field private mResponseCallback:Lcom/android/internal/view/IInlineSuggestionsResponseCallback;

.field private final mUiCallback:Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;

.field private final mUiExtras:Landroid/os/Bundle;

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerInternal;ILandroid/content/ComponentName;Landroid/os/Handler;Ljava/lang/Object;Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;Landroid/os/Bundle;Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/inputmethod/InputMethodManagerInternal;",
            "I",
            "Landroid/content/ComponentName;",
            "Landroid/os/Handler;",
            "Ljava/lang/Object;",
            "Landroid/view/autofill/AutofillId;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            ">;",
            "Landroid/os/Bundle;",
            "Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mPreviousResponseIsNotEmpty:Ljava/lang/Boolean;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    iput-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeSessionInvalidated:Z

    iput-object p1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    iput p2, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mUserId:I

    iput-object p3, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mComponentName:Landroid/content/ComponentName;

    iput-object p4, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mLock:Ljava/lang/Object;

    iput-object p8, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mUiExtras:Landroid/os/Bundle;

    iput-object p9, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mUiCallback:Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;

    iput-object p6, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    iput-object p7, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequestConsumer:Ljava/util/function/Consumer;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->handleOnReceiveImeSessionInvalidated()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->handleOnReceiveImeStatusUpdated(ZZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;Landroid/view/autofill/AutofillId;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->handleOnReceiveImeStatusUpdated(Landroid/view/autofill/AutofillId;ZZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/internal/view/IInlineSuggestionsResponseCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->handleOnReceiveImeRequest(Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/internal/view/IInlineSuggestionsResponseCallback;)V

    return-void
.end method

.method private handleOnReceiveImeRequest(Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/internal/view/IInlineSuggestionsResponseCallback;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequestReceived:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequestReceived:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeSessionInvalidated:Z

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iput-object p1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    iput-object p2, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mResponseCallback:Lcom/android/internal/view/IInlineSuggestionsResponseCallback;

    iget-object v3, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->handleOnReceiveImeStatusUpdated(Landroid/view/autofill/AutofillId;ZZ)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequestConsumer:Ljava/util/function/Consumer;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequestConsumer:Ljava/util/function/Consumer;

    :cond_2
    monitor-exit v0

    return-void

    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleOnReceiveImeSessionInvalidated()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeSessionInvalidated:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleOnReceiveImeStatusUpdated(Landroid/view/autofill/AutofillId;ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeCurrentFieldId:Landroid/view/autofill/AutofillId;

    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->handleOnReceiveImeStatusUpdated(ZZ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleOnReceiveImeStatusUpdated(ZZ)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeCurrentFieldId:Landroid/view/autofill/AutofillId;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeInputStarted:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, p1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iget-boolean v4, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeInputViewStarted:Z

    if-eq v4, p2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    iput-boolean p1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeInputStarted:Z

    iput-boolean p2, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeInputViewStarted:Z

    if-nez v1, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->maybeUpdateResponseToImeLocked()V

    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static match(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)Z
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeNotifyFillUiEventLocked(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InlineSuggestion;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InlineSuggestion;

    invoke-virtual {v2}, Landroid/view/inputmethod/InlineSuggestion;->getInfo()Landroid/view/inputmethod/InlineSuggestionInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/inputmethod/InlineSuggestionInfo;->isPinned()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "maybeNotifyFillUiEventLoked(): hasSuggestionToShow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mPreviousHasNonPinSuggestionShow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mPreviousHasNonPinSuggestionShow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mPreviousHasNonPinSuggestionShow:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mUiCallback:Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;

    iget-object v2, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-interface {v1, v2}, Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;->notifyInlineUiShown(Landroid/view/autofill/AutofillId;)V

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    iget-boolean v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mPreviousHasNonPinSuggestionShow:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mUiCallback:Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;

    iget-object v2, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-interface {v1, v2}, Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;->notifyInlineUiHidden(Landroid/view/autofill/AutofillId;)V

    :cond_5
    :goto_2
    iput-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mPreviousHasNonPinSuggestionShow:Z

    return-void
.end method

.method private maybeUpdateResponseToImeLocked()V
    .locals 4

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "maybeUpdateResponseToImeLocked called"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mResponseCallback:Lcom/android/internal/view/IInlineSuggestionsResponseCallback;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeInputViewStarted:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    iget-object v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeCurrentFieldId:Landroid/view/autofill/AutofillId;

    invoke-static {v0, v1}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->match(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/InlineFillUi;->getInlineSuggestionsResponse()Landroid/view/inputmethod/InlineSuggestionsResponse;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/InlineSuggestionsResponse;->getInlineSuggestions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mPreviousResponseIsNotEmpty:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/view/inputmethod/InlineSuggestionsResponse;->getInlineSuggestions()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->maybeNotifyFillUiEventLocked(Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->updateResponseToImeUncheckLocked(Landroid/view/inputmethod/InlineSuggestionsResponse;)V

    xor-int/lit8 v2, v1, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mPreviousResponseIsNotEmpty:Ljava/lang/Boolean;

    :cond_3
    return-void

    :cond_4
    :goto_0
    return-void
.end method

.method private updateResponseToImeUncheckLocked(Landroid/view/inputmethod/InlineSuggestionsResponse;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send inline response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/inputmethod/InlineSuggestionsResponse;->getInlineSuggestions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mResponseCallback:Lcom/android/internal/view/IInlineSuggestionsResponseCallback;

    iget-object v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/view/IInlineSuggestionsResponseCallback;->onInlineSuggestionsResponse(Landroid/view/autofill/AutofillId;Landroid/view/inputmethod/InlineSuggestionsResponse;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->TAG:Ljava/lang/String;

    const-string v2, "RemoteException sending InlineSuggestionsResponse to IME"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method destroySessionLocked()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequestReceived:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Never received an InlineSuggestionsRequest from the IME for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method getAutofillIdLocked()Landroid/view/autofill/AutofillId;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    return-object v0
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

    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method onCreateInlineSuggestionsRequestLocked()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeSessionInvalidated:Z

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreateInlineSuggestionsRequestLocked called: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    iget v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mUserId:I

    new-instance v2, Lcom/android/internal/view/InlineSuggestionsRequestInfo;

    iget-object v3, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mComponentName:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    iget-object v5, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mUiExtras:Landroid/os/Bundle;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/view/InlineSuggestionsRequestInfo;-><init>(Landroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/os/Bundle;)V

    new-instance v3, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;-><init>(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->onCreateInlineSuggestionsRequest(ILcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;)V

    return-void
.end method

.method onInlineSuggestionsResponseLocked(Lcom/android/server/autofill/ui/InlineFillUi;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onInlineSuggestionsResponseLocked called for:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/autofill/ui/InlineFillUi;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mResponseCallback:Lcom/android/internal/view/IInlineSuggestionsResponseCallback;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeSessionInvalidated:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/autofill/ui/InlineFillUi;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    iput-object p1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    invoke-direct {p0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->maybeUpdateResponseToImeLocked()V

    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method resetInlineFillUiLocked()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    return-void
.end method
