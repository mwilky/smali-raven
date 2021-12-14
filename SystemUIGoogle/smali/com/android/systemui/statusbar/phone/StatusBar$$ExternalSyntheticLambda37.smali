.class public final synthetic Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda37;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda37;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda37;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda37;->INSTANCE:Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda37;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->$r8$lambda$ZL6UP51qhnXdgdfHYf5w9jmpqBQ(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method
