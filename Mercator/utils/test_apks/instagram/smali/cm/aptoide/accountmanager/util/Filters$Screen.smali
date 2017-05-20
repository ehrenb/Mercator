.class public final enum Lcm/aptoide/accountmanager/util/Filters$Screen;
.super Ljava/lang/Enum;
.source "Filters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/accountmanager/util/Filters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Screen"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcm/aptoide/accountmanager/util/Filters$Screen;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcm/aptoide/accountmanager/util/Filters$Screen;

.field public static final enum large:Lcm/aptoide/accountmanager/util/Filters$Screen;

.field public static final enum normal:Lcm/aptoide/accountmanager/util/Filters$Screen;

.field public static final enum notfound:Lcm/aptoide/accountmanager/util/Filters$Screen;

.field public static final enum small:Lcm/aptoide/accountmanager/util/Filters$Screen;

.field public static final enum xlarge:Lcm/aptoide/accountmanager/util/Filters$Screen;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcm/aptoide/accountmanager/util/Filters$Screen;

    const-string v1, "notfound"

    invoke-direct {v0, v1, v2}, Lcm/aptoide/accountmanager/util/Filters$Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/accountmanager/util/Filters$Screen;->notfound:Lcm/aptoide/accountmanager/util/Filters$Screen;

    new-instance v0, Lcm/aptoide/accountmanager/util/Filters$Screen;

    const-string v1, "small"

    invoke-direct {v0, v1, v3}, Lcm/aptoide/accountmanager/util/Filters$Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/accountmanager/util/Filters$Screen;->small:Lcm/aptoide/accountmanager/util/Filters$Screen;

    new-instance v0, Lcm/aptoide/accountmanager/util/Filters$Screen;

    const-string v1, "normal"

    invoke-direct {v0, v1, v4}, Lcm/aptoide/accountmanager/util/Filters$Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/accountmanager/util/Filters$Screen;->normal:Lcm/aptoide/accountmanager/util/Filters$Screen;

    new-instance v0, Lcm/aptoide/accountmanager/util/Filters$Screen;

    const-string v1, "large"

    invoke-direct {v0, v1, v5}, Lcm/aptoide/accountmanager/util/Filters$Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/accountmanager/util/Filters$Screen;->large:Lcm/aptoide/accountmanager/util/Filters$Screen;

    new-instance v0, Lcm/aptoide/accountmanager/util/Filters$Screen;

    const-string v1, "xlarge"

    invoke-direct {v0, v1, v6}, Lcm/aptoide/accountmanager/util/Filters$Screen;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/accountmanager/util/Filters$Screen;->xlarge:Lcm/aptoide/accountmanager/util/Filters$Screen;

    .line 15
    const/4 v0, 0x5

    new-array v0, v0, [Lcm/aptoide/accountmanager/util/Filters$Screen;

    sget-object v1, Lcm/aptoide/accountmanager/util/Filters$Screen;->notfound:Lcm/aptoide/accountmanager/util/Filters$Screen;

    aput-object v1, v0, v2

    sget-object v1, Lcm/aptoide/accountmanager/util/Filters$Screen;->small:Lcm/aptoide/accountmanager/util/Filters$Screen;

    aput-object v1, v0, v3

    sget-object v1, Lcm/aptoide/accountmanager/util/Filters$Screen;->normal:Lcm/aptoide/accountmanager/util/Filters$Screen;

    aput-object v1, v0, v4

    sget-object v1, Lcm/aptoide/accountmanager/util/Filters$Screen;->large:Lcm/aptoide/accountmanager/util/Filters$Screen;

    aput-object v1, v0, v5

    sget-object v1, Lcm/aptoide/accountmanager/util/Filters$Screen;->xlarge:Lcm/aptoide/accountmanager/util/Filters$Screen;

    aput-object v1, v0, v6

    sput-object v0, Lcm/aptoide/accountmanager/util/Filters$Screen;->$VALUES:[Lcm/aptoide/accountmanager/util/Filters$Screen;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static lookup(Ljava/lang/String;)Lcm/aptoide/accountmanager/util/Filters$Screen;
    .locals 2

    .prologue
    .line 20
    :try_start_0
    invoke-static {p0}, Lcm/aptoide/accountmanager/util/Filters$Screen;->valueOf(Ljava/lang/String;)Lcm/aptoide/accountmanager/util/Filters$Screen;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 23
    :goto_0
    return-object v0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 23
    sget-object v0, Lcm/aptoide/accountmanager/util/Filters$Screen;->notfound:Lcm/aptoide/accountmanager/util/Filters$Screen;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcm/aptoide/accountmanager/util/Filters$Screen;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcm/aptoide/accountmanager/util/Filters$Screen;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcm/aptoide/accountmanager/util/Filters$Screen;

    return-object v0
.end method

.method public static values()[Lcm/aptoide/accountmanager/util/Filters$Screen;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcm/aptoide/accountmanager/util/Filters$Screen;->$VALUES:[Lcm/aptoide/accountmanager/util/Filters$Screen;

    invoke-virtual {v0}, [Lcm/aptoide/accountmanager/util/Filters$Screen;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcm/aptoide/accountmanager/util/Filters$Screen;

    return-object v0
.end method
