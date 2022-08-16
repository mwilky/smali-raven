.class public final synthetic Lcom/android/systemui/people/PeopleSpaceActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/people/PeopleSpaceActivity;

.field public final synthetic f$2:Lcom/android/systemui/people/widget/PeopleTileKey;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/people/PeopleSpaceActivity;Landroid/app/people/PeopleSpaceTile;Lcom/android/systemui/people/widget/PeopleTileKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/people/PeopleSpaceActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/people/PeopleSpaceActivity;

    iput-object p3, p0, Lcom/android/systemui/people/PeopleSpaceActivity$$ExternalSyntheticLambda0;->f$2:Lcom/android/systemui/people/widget/PeopleTileKey;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/people/PeopleSpaceActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/people/PeopleSpaceActivity;

    iget-object p0, p0, Lcom/android/systemui/people/PeopleSpaceActivity$$ExternalSyntheticLambda0;->f$2:Lcom/android/systemui/people/widget/PeopleTileKey;

    iget-object v0, p1, Lcom/android/systemui/people/PeopleSpaceActivity;->mPeopleSpaceWidgetManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    iget v1, p1, Lcom/android/systemui/people/PeopleSpaceActivity;->mAppWidgetId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->addNewWidget(ILcom/android/systemui/people/widget/PeopleTileKey;)V

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    iget v0, p1, Lcom/android/systemui/people/PeopleSpaceActivity;->mAppWidgetId:I

    const-string v1, "appWidgetId"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p1, v0, p0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
