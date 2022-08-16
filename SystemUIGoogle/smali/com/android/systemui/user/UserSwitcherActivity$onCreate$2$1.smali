.class public final Lcom/android/systemui/user/UserSwitcherActivity$onCreate$2$1;
.super Ljava/lang/Object;
.source "UserSwitcherActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/user/UserSwitcherActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/user/UserSwitcherActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/UserSwitcherActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/user/UserSwitcherActivity$onCreate$2$1;->this$0:Lcom/android/systemui/user/UserSwitcherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/user/UserSwitcherActivity$onCreate$2$1;->this$0:Lcom/android/systemui/user/UserSwitcherActivity;

    sget p1, Lcom/android/systemui/user/UserSwitcherActivity;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/systemui/user/UserSwitcherActivity;->addUserRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v1, Lcom/android/systemui/user/UserSwitcherActivity$ItemAdapter;

    iget-object v2, p0, Lcom/android/systemui/user/UserSwitcherActivity;->layoutInflater:Landroid/view/LayoutInflater;

    new-instance v3, Lcom/android/systemui/user/UserSwitcherActivity$showPopupMenu$popupMenuAdapter$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/user/UserSwitcherActivity$showPopupMenu$popupMenuAdapter$1;-><init>(Lcom/android/systemui/user/UserSwitcherActivity;)V

    new-instance v4, Lcom/android/systemui/user/UserSwitcherActivity$showPopupMenu$popupMenuAdapter$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/user/UserSwitcherActivity$showPopupMenu$popupMenuAdapter$2;-><init>(Lcom/android/systemui/user/UserSwitcherActivity;)V

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/systemui/user/UserSwitcherActivity$ItemAdapter;-><init>(Lcom/android/systemui/user/UserSwitcherActivity;Landroid/view/LayoutInflater;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    new-instance p1, Lcom/android/systemui/user/UserSwitcherPopupMenu;

    iget-object v1, p0, Lcom/android/systemui/user/UserSwitcherActivity;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-direct {p1, p0, v1}, Lcom/android/systemui/user/UserSwitcherPopupMenu;-><init>(Lcom/android/systemui/user/UserSwitcherActivity;Lcom/android/systemui/plugins/FalsingManager;)V

    iget-object v1, p0, Lcom/android/systemui/user/UserSwitcherActivity;->addButton:Landroid/view/View;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroid/widget/ListAdapter;

    invoke-virtual {p1, v1}, Lcom/android/systemui/user/UserSwitcherPopupMenu;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/android/systemui/user/UserSwitcherActivity$showPopupMenu$2$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/systemui/user/UserSwitcherActivity$showPopupMenu$2$1;-><init>(Lcom/android/systemui/user/UserSwitcherActivity;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/systemui/user/UserSwitcherPopupMenu;)V

    invoke-virtual {p1, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p1}, Lcom/android/systemui/user/UserSwitcherPopupMenu;->show()V

    return-void
.end method
