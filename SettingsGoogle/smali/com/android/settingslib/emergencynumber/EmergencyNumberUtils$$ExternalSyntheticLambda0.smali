.class public final synthetic Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;

.field public final synthetic f$1:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;

    iput-object p2, p0, Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;

    iget-object p0, p0, Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    check-cast p1, Landroid/telephony/emergency/EmergencyNumber;

    invoke-static {v0, p0, p1}, Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;->$r8$lambda$t4Ojj223mAz6vkPqWmxsBSHolFc(Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;[Ljava/lang/String;Landroid/telephony/emergency/EmergencyNumber;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
