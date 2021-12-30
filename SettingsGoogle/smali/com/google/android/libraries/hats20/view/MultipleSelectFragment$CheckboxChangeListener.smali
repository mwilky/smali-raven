.class Lcom/google/android/libraries/hats20/view/MultipleSelectFragment$CheckboxChangeListener;
.super Ljava/lang/Object;
.source "MultipleSelectFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckboxChangeListener"
.end annotation


# instance fields
.field private final index:I

.field final synthetic this$0:Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment$CheckboxChangeListener;->this$0:Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment$CheckboxChangeListener;->index:I

    return-void
.end method

.method private uncheckAllButNoneOfAbove()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment$CheckboxChangeListener;->this$0:Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;

    invoke-static {v0}, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->access$200(Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment$CheckboxChangeListener;->this$0:Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;

    invoke-static {v1}, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->access$100(Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;)[Z

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v0, "HatsLibMultiSelectFrag"

    const-string v1, "Number of children (checkboxes) contained in the answers container was not equal to the number of possible responses including \"None of the Above\". Note this is not expected to happen in prod."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment$CheckboxChangeListener;->this$0:Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;

    invoke-static {v2}, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->access$200(Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment$CheckboxChangeListener;->this$0:Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;

    invoke-static {v2}, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->access$200(Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/google/android/libraries/hats20/R$id;->hats_lib_multiple_select_checkbox:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "NoneOfTheAbove"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "NoneOfTheAbove"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment$CheckboxChangeListener;->this$0:Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;

    invoke-static {p1, p2}, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->access$002(Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;Z)Z

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment$CheckboxChangeListener;->uncheckAllButNoneOfAbove()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment$CheckboxChangeListener;->this$0:Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;

    invoke-static {p1}, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->access$100(Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;)[Z

    move-result-object p1

    iget v1, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment$CheckboxChangeListener;->index:I

    aput-boolean p2, p1, v1

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment$CheckboxChangeListener;->this$0:Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;

    invoke-static {p1}, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->access$200(Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment$CheckboxChangeListener;->this$0:Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/hats20/view/OnQuestionProgressableChangeListener;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment$CheckboxChangeListener;->this$0:Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;

    invoke-virtual {p2}, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->isResponseSatisfactory()Z

    move-result p2

    iget-object p0, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment$CheckboxChangeListener;->this$0:Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;

    invoke-interface {p1, p2, p0}, Lcom/google/android/libraries/hats20/view/OnQuestionProgressableChangeListener;->onQuestionProgressableChanged(ZLandroidx/fragment/app/Fragment;)V

    :cond_2
    return-void
.end method
