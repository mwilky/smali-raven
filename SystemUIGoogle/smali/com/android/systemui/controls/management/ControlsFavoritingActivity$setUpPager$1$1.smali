.class public final Lcom/android/systemui/controls/management/ControlsFavoritingActivity$setUpPager$1$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "ControlsFavoritingActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->setUpPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$setUpPager$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrolled(IFI)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$setUpPager$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {p0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getPageIndicator$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Lcom/android/systemui/controls/management/ManagementPageIndicator;

    move-result-object p0

    if-eqz p0, :cond_0

    int-to-float p1, p1

    add-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/management/ManagementPageIndicator;->setLocation(F)V

    return-void

    :cond_0
    const-string p0, "pageIndicator"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onPageSelected(I)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$setUpPager$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {v0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getListOfStructures$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/controls/management/StructureContainer;

    invoke-virtual {p1}, Lcom/android/systemui/controls/management/StructureContainer;->getStructureName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$setUpPager$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {p1}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getAppName$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$setUpPager$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {v0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getTitleView$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "titleView"

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$setUpPager$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    invoke-static {p0}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->access$getTitleView$p(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)Landroid/widget/TextView;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    return-void

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method
