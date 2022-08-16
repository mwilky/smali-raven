.class public final Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;
.super Ljava/lang/Object;
.source "NotificationStackScrollLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimationEvent"
.end annotation


# static fields
.field public static FILTERS:[Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

.field public static LENGTHS:[I


# instance fields
.field public final animationType:I

.field public final filter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

.field public headsUpFromBottom:Z

.field public final length:J

.field public final mChangingView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field public viewAfterChangingView:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x10

    new-array v1, v0, [Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha:Z

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays:Z

    const/4 v4, 0x0

    aput-object v2, v1, v4

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha:Z

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays:Z

    aput-object v2, v1, v3

    const/4 v2, 0x2

    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v4}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays:Z

    aput-object v4, v1, v2

    const/4 v2, 0x3

    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v4}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateDimmed:Z

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    aput-object v4, v1, v2

    const/4 v2, 0x4

    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v4}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    aput-object v4, v1, v2

    const/4 v2, 0x5

    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v4}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateDimmed:Z

    aput-object v4, v1, v2

    const/4 v2, 0x6

    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v4}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha:Z

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    aput-object v4, v1, v2

    const/4 v2, 0x7

    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v4}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateDimmed:Z

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays:Z

    aput-object v4, v1, v2

    const/16 v2, 0x8

    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v4}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHideSensitive:Z

    aput-object v4, v1, v2

    const/16 v2, 0x9

    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v4}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    aput-object v4, v1, v2

    const/16 v2, 0xa

    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v4}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha:Z

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    aput-object v4, v1, v2

    const/16 v2, 0xb

    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v4}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    aput-object v4, v1, v2

    const/16 v2, 0xc

    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v4}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays:Z

    aput-object v4, v1, v2

    const/16 v2, 0xd

    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v4}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays:Z

    aput-object v4, v1, v2

    const/16 v2, 0xe

    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v4}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    aput-object v4, v1, v2

    const/16 v2, 0xf

    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v4}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha:Z

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateDimmed:Z

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHideSensitive:Z

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    aput-object v4, v1, v2

    sput-object v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->FILTERS:[Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->LENGTHS:[I

    return-void

    :array_0
    .array-data 4
        0x1d0
        0x1d0
        0x168
        0x168
        0xdc
        0xdc
        0x168
        0x1c0
        0x168
        0x168
        0x168
        0x190
        0x190
        0x190
        0x168
        0x168
    .end array-data
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V
    .locals 2

    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->LENGTHS:[I

    aget v0, v0, p2

    int-to-long v0, v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;IJ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;IJ)V
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->FILTERS:[Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    aget-object v0, v0, p2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->mChangingView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iput p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    iput-wide p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->length:J

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->filter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    return-void
.end method
