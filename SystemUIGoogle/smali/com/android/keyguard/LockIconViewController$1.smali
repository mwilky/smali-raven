.class Lcom/android/keyguard/LockIconViewController$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "LockIconViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/LockIconViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mAccessibilityAuthenticateHint:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field private final mAccessibilityEnterHint:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field final synthetic this$0:Lcom/android/keyguard/LockIconViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/LockIconViewController;)V
    .locals 3

    iput-object p1, p0, Lcom/android/keyguard/LockIconViewController$1;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-static {p1}, Lcom/android/keyguard/LockIconViewController;->access$000(Lcom/android/keyguard/LockIconViewController;)Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->accessibility_authenticate_hint:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-direct {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/keyguard/LockIconViewController$1;->mAccessibilityAuthenticateHint:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-static {p1}, Lcom/android/keyguard/LockIconViewController;->access$100(Lcom/android/keyguard/LockIconViewController;)Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$string;->accessibility_enter_hint:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/keyguard/LockIconViewController$1;->mAccessibilityEnterHint:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object p1, p0, Lcom/android/keyguard/LockIconViewController$1;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {p1}, Lcom/android/keyguard/LockIconViewController;->access$200(Lcom/android/keyguard/LockIconViewController;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/LockIconViewController$1;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {p1}, Lcom/android/keyguard/LockIconViewController;->access$300(Lcom/android/keyguard/LockIconViewController;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController$1;->mAccessibilityAuthenticateHint:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/LockIconViewController$1;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {p1}, Lcom/android/keyguard/LockIconViewController;->access$400(Lcom/android/keyguard/LockIconViewController;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController$1;->mAccessibilityEnterHint:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_1
    :goto_0
    return-void
.end method
