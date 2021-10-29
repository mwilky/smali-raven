.class Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation$1;
.super Ljava/lang/Object;
.source "NonGesturalNavigation.java"

# interfaces
.implements Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation$1;->this$0:Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationModeChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation$1;->this$0:Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;

    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;->access$002(Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;Z)Z

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation$1;->this$0:Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->notifyListener()V

    return-void
.end method
