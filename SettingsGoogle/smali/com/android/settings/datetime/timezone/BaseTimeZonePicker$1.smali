.class Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$1;
.super Lcom/google/android/material/appbar/AppBarLayout$Behavior$DragCallback;
.source "BaseTimeZonePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->disableToolBarScrollableBehavior()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;


# direct methods
.method constructor <init>(Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$1;->this$0:Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;

    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout$Behavior$DragCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public canDrag(Lcom/google/android/material/appbar/AppBarLayout;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
