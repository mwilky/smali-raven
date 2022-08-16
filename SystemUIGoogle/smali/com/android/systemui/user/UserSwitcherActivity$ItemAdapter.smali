.class public final Lcom/android/systemui/user/UserSwitcherActivity$ItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "UserSwitcherActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/user/UserSwitcherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;",
        ">;"
    }
.end annotation


# instance fields
.field public final iconGetter:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public final layoutInflater:Landroid/view/LayoutInflater;

.field public final resource:I

.field public final textGetter:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/UserSwitcherActivity;Landroid/view/LayoutInflater;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const v0, 0x7f0e02c5

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput v0, p0, Lcom/android/systemui/user/UserSwitcherActivity$ItemAdapter;->resource:I

    iput-object p2, p0, Lcom/android/systemui/user/UserSwitcherActivity$ItemAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/android/systemui/user/UserSwitcherActivity$ItemAdapter;->textGetter:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/android/systemui/user/UserSwitcherActivity$ItemAdapter;->iconGetter:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/user/UserSwitcherActivity$ItemAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    iget v0, p0, Lcom/android/systemui/user/UserSwitcherActivity$ItemAdapter;->resource:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f0b02ff

    invoke-virtual {p2, p3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/user/UserSwitcherActivity$ItemAdapter;->iconGetter:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p3, 0x7f0b06a3

    invoke-virtual {p2, p3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/systemui/user/UserSwitcherActivity$ItemAdapter;->textGetter:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
