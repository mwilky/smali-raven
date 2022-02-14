.class public final synthetic Lcom/android/server/wm/AccessibilityController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/AccessibilityController$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/AccessibilityController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/AccessibilityController$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/wm/AccessibilityController$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/wm/AccessibilityController$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/wm/AccessibilityController;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Lcom/android/server/wm/WindowState;

    invoke-static {p1, p2, p3}, Lcom/android/server/wm/AccessibilityController;->$r8$lambda$R1oQ_zI0Go_V66sB20B0Iso34p0(Lcom/android/server/wm/AccessibilityController;ILcom/android/server/wm/WindowState;)V

    return-void
.end method
