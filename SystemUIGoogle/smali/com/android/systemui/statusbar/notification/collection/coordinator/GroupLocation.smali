.class final enum Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;
.super Ljava/lang/Enum;
.source "HeadsUpCoordinator.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;

.field public static final enum Child:Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;

.field public static final enum Detached:Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;

.field public static final enum Isolated:Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;

.field public static final enum Summary:Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;

    const/4 v1, 0x0

    const-string v2, "Detached"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;->Detached:Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;

    new-instance v2, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;

    const/4 v3, 0x1

    const-string v4, "Isolated"

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;->Isolated:Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;

    new-instance v4, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;

    const/4 v5, 0x2

    const-string v6, "Summary"

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;-><init>(ILjava/lang/String;)V

    sput-object v4, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;->Summary:Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;

    new-instance v6, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;

    const/4 v7, 0x3

    const-string v8, "Child"

    invoke-direct {v6, v7, v8}, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;-><init>(ILjava/lang/String;)V

    sput-object v6, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;->Child:Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;

    aput-object v0, v8, v1

    aput-object v2, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    sput-object v8, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;->$VALUES:[Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;->$VALUES:[Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;

    return-object v0
.end method
