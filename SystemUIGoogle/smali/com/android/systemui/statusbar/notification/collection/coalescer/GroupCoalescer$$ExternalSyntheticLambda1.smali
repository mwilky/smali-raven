.class public final synthetic Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;

    check-cast p2, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->$r8$lambda$Qyf_aFqTAE7OA53b-NlnwVLzPx8(Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;)I

    move-result p0

    return p0
.end method
