.class public final Lcom/android/systemui/statusbar/notification/SectionClassifier_Factory;
.super Ljava/lang/Object;
.source "SectionClassifier_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/SectionClassifier_Factory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/notification/SectionClassifier;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/android/systemui/statusbar/notification/SectionClassifier;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/SectionClassifier;-><init>()V

    return-object p0
.end method