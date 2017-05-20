.class public Lcm/aptoide/pt/v8engine/analytics/Analytics$AppViewViewedFrom;
.super Ljava/lang/Object;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/analytics/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppViewViewedFrom"
.end annotation


# static fields
.field public static final APP_VIEWED_OPEN_FROM_EVENT_NAME_KEY:Ljava/lang/String; = "App_Viewed_Open_From"

.field public static final HOME_SCREEN_STEP:Ljava/lang/String; = "home"

.field public static final NUMBER_OF_STEPS_TO_RECORD:I = 0x5

.field private static STEPS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static lastStep:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 984
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcm/aptoide/pt/v8engine/analytics/Analytics$AppViewViewedFrom;->STEPS:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 979
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addStepToList(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1039
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1040
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/Analytics$AppViewViewedFrom;->STEPS:Ljava/util/ArrayList;

    const-string v1, " "

    const-string v2, "-"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1041
    # getter for: Lcm/aptoide/pt/v8engine/analytics/Analytics;->TAG:Ljava/lang/String;
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addStepToList() called with: step = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/Analytics$AppViewViewedFrom;->STEPS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 1043
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/Analytics$AppViewViewedFrom;->STEPS:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1045
    :cond_0
    sput-object p0, Lcm/aptoide/pt/v8engine/analytics/Analytics$AppViewViewedFrom;->lastStep:Ljava/lang/String;

    .line 1047
    :cond_1
    return-void
.end method

.method public static appViewOpenFrom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 990
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/Analytics$AppViewViewedFrom;->STEPS:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 991
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/Analytics$AppViewViewedFrom;->STEPS:Ljava/util/ArrayList;

    const-string v1, "home"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 992
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/Analytics$AppViewViewedFrom;->STEPS:Ljava/util/ArrayList;

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/analytics/Analytics$AppViewViewedFrom;->formatStepsToSingleEvent(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 993
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 994
    const-string v0, "Package Name"

    invoke-virtual {v2, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    const-string v0, "Source"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    const-string v0, "Trusted Badge"

    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    const-string v0, "Application Publisher"

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/Analytics$AppViewViewedFrom;->STEPS:Ljava/util/ArrayList;

    const-string v3, "home"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 999
    if-lez v0, :cond_0

    .line 1000
    sget-object v3, Lcm/aptoide/pt/v8engine/analytics/Analytics$AppViewViewedFrom;->STEPS:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1001
    const-string v3, "apps-group-editors-choice"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1002
    const-string v0, "editors package name"

    invoke-virtual {v2, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    :cond_0
    :goto_0
    const-string v0, "teste"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appViewOpenFrom: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    const-string v0, "Source"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Source"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/analytics/Analytics$AppViewViewedFrom;->containsUnwantedValues(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1011
    const-string v0, "App_Viewed_Open_From"

    const/4 v3, 0x2

    # invokes: Lcm/aptoide/pt/v8engine/analytics/Analytics;->track(Ljava/lang/String;Ljava/util/HashMap;I)V
    invoke-static {v0, v2, v3}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$600(Ljava/lang/String;Ljava/util/HashMap;I)V

    .line 1014
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1015
    const-string v2, "Package Name"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    const-string v2, "Source"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    const-string v1, "Trusted Badge"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    const-string v1, "Application Publisher"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    const-string v1, "App_Viewed_Open_From"

    # invokes: Lcm/aptoide/pt/v8engine/analytics/Analytics;->logFacebookEvents(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v1, v0}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$700(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1021
    :cond_2
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/Analytics$AppViewViewedFrom;->STEPS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1022
    return-void

    .line 1004
    :cond_3
    const-string v3, "bundle package name"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    const-string v3, "bundle category"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected static containsUnwantedValues(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1029
    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1030
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 1031
    # getter for: Lcm/aptoide/pt/v8engine/analytics/Analytics;->unwantedValuesList:[Ljava/lang/String;
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$900()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1032
    const/4 v0, 0x1

    .line 1035
    :cond_0
    return v0

    .line 1030
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static formatStepsToSingleEvent(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1025
    const-string v0, "_"

    const/4 v1, 0x0

    const-string v2, "home"

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getLastStep()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1050
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/Analytics$AppViewViewedFrom;->lastStep:Ljava/lang/String;

    return-object v0
.end method
