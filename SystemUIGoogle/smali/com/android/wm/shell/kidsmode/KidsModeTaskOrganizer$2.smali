.class public final Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$2;
.super Ljava/lang/Object;
.source "KidsModeTaskOrganizer.java"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$2;->this$0:Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$2;->this$0:Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;

    iget-object p1, p1, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget p2, p1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget p1, p1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    iget-object p0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$2;->this$0:Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;

    iget v0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mDisplayWidth:I

    if-eq p2, v0, :cond_3

    iget v0, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mDisplayHeight:I

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    iput p2, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mDisplayWidth:I

    iput p1, p0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mDisplayHeight:I

    invoke-static {p0}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->-$$Nest$mupdateBounds(Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;)V

    :cond_3
    :goto_0
    return-void
.end method
