.class public final synthetic Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda45;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda45;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda45;

    invoke-direct {v0}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda45;-><init>()V

    sput-object v0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda45;->INSTANCE:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda45;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->$r8$lambda$BXoeO7V7a0xBRyyHGxbj7bxNNEM(Lcom/android/wm/shell/bubbles/Bubble;)Lcom/android/wm/shell/bubbles/BadgedImageView;

    move-result-object p0

    return-object p0
.end method
