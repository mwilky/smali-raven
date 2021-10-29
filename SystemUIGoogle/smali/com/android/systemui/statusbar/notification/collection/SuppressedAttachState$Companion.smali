.class public final Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState$Companion;
.super Ljava/lang/Object;
.source "SuppressedAttachState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create()Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;
    .locals 2

    new-instance p0, Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;-><init>(Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;Lcom/android/systemui/statusbar/notification/collection/GroupEntry;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method
