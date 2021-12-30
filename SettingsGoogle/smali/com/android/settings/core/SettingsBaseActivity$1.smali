.class Lcom/android/settings/core/SettingsBaseActivity$1;
.super Lcom/google/android/material/appbar/AppBarLayout$Behavior$DragCallback;
.source "SettingsBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/core/SettingsBaseActivity;->disableCollapsingToolbarLayoutScrollingBehavior()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/core/SettingsBaseActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/core/SettingsBaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/core/SettingsBaseActivity$1;->this$0:Lcom/android/settings/core/SettingsBaseActivity;

    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout$Behavior$DragCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public canDrag(Lcom/google/android/material/appbar/AppBarLayout;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
