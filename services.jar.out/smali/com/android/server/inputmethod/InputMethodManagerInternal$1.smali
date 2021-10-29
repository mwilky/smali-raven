.class Lcom/android/server/inputmethod/InputMethodManagerInternal$1;
.super Lcom/android/server/inputmethod/InputMethodManagerInternal;
.source "InputMethodManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnabledInputMethodListAsUser(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInputMethodListAsUser(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hideCurrentInputMethod(I)V
    .locals 0

    return-void
.end method

.method public onCreateInlineSuggestionsRequest(ILcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;)V
    .locals 0

    return-void
.end method

.method public registerInputMethodListListener(Lcom/android/server/inputmethod/InputMethodManagerInternal$InputMethodListListener;)V
    .locals 0

    return-void
.end method

.method public removeImeSurface()V
    .locals 0

    return-void
.end method

.method public reportImeControl(Landroid/os/IBinder;Z)V
    .locals 0

    return-void
.end method

.method public setInteractive(Z)V
    .locals 0

    return-void
.end method

.method public switchToInputMethod(Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public transferTouchFocusToImeWindow(Landroid/os/IBinder;I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateImeWindowStatus(Z)V
    .locals 0

    return-void
.end method
