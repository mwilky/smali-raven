.class Lcom/android/systemui/people/PeopleSpaceActivity$1;
.super Landroid/view/ViewOutlineProvider;
.source "PeopleSpaceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/people/PeopleSpaceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/people/PeopleSpaceActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/people/PeopleSpaceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/people/PeopleSpaceActivity$1;->this$0:Lcom/android/systemui/people/PeopleSpaceActivity;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object p0, p0, Lcom/android/systemui/people/PeopleSpaceActivity$1;->this$0:Lcom/android/systemui/people/PeopleSpaceActivity;

    invoke-static {p0}, Lcom/android/systemui/people/PeopleSpaceActivity;->access$000(Lcom/android/systemui/people/PeopleSpaceActivity;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$dimen;->people_space_widget_radius:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
