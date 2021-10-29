.class public final Lcom/android/wm/shell/animation/FloatProperties;
.super Ljava/lang/Object;
.source "FloatProperties.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/animation/FloatProperties$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/wm/shell/animation/FloatProperties$Companion;

.field public static final RECTF_X:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECTF_Y:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECT_HEIGHT:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECT_WIDTH:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECT_X:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECT_Y:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/wm/shell/animation/FloatProperties$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/animation/FloatProperties$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/wm/shell/animation/FloatProperties;->Companion:Lcom/android/wm/shell/animation/FloatProperties$Companion;

    new-instance v0, Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_X$1;

    invoke-direct {v0}, Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_X$1;-><init>()V

    sput-object v0, Lcom/android/wm/shell/animation/FloatProperties;->RECT_X:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    new-instance v0, Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_Y$1;

    invoke-direct {v0}, Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_Y$1;-><init>()V

    sput-object v0, Lcom/android/wm/shell/animation/FloatProperties;->RECT_Y:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    new-instance v0, Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_WIDTH$1;

    invoke-direct {v0}, Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_WIDTH$1;-><init>()V

    sput-object v0, Lcom/android/wm/shell/animation/FloatProperties;->RECT_WIDTH:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    new-instance v0, Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_HEIGHT$1;

    invoke-direct {v0}, Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_HEIGHT$1;-><init>()V

    sput-object v0, Lcom/android/wm/shell/animation/FloatProperties;->RECT_HEIGHT:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    new-instance v0, Lcom/android/wm/shell/animation/FloatProperties$Companion$RECTF_X$1;

    invoke-direct {v0}, Lcom/android/wm/shell/animation/FloatProperties$Companion$RECTF_X$1;-><init>()V

    sput-object v0, Lcom/android/wm/shell/animation/FloatProperties;->RECTF_X:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    new-instance v0, Lcom/android/wm/shell/animation/FloatProperties$Companion$RECTF_Y$1;

    invoke-direct {v0}, Lcom/android/wm/shell/animation/FloatProperties$Companion$RECTF_Y$1;-><init>()V

    sput-object v0, Lcom/android/wm/shell/animation/FloatProperties;->RECTF_Y:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    return-void
.end method
