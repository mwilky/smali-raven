.class public final synthetic Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda39;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService;

    check-cast p2, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    check-cast p3, Landroid/view/inputmethod/EditorInfo;

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p1, p2, p3, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->$r8$lambda$9e10GLBNMx9Pu36nGitZK9F7mt4(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    return-void
.end method
