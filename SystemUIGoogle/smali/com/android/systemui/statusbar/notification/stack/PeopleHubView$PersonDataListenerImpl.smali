.class final Lcom/android/systemui/statusbar/notification/stack/PeopleHubView$PersonDataListenerImpl;
.super Ljava/lang/Object;
.source "PeopleHubView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/stack/PeopleHubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PersonDataListenerImpl"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPeopleHubView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PeopleHubView.kt\ncom/android/systemui/statusbar/notification/stack/PeopleHubView$PersonDataListenerImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,107:1\n1#2:108\n*E\n"
.end annotation


# instance fields
.field private final avatarView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/PeopleHubView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/stack/PeopleHubView;Landroid/widget/ImageView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatarView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/PeopleHubView$PersonDataListenerImpl;->this$0:Lcom/android/systemui/statusbar/notification/stack/PeopleHubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/PeopleHubView$PersonDataListenerImpl;->avatarView:Landroid/widget/ImageView;

    return-void
.end method
