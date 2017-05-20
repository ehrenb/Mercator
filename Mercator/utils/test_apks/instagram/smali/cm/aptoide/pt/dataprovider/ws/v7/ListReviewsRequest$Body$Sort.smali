.class public final enum Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body$Sort;
.super Ljava/lang/Enum;
.source "ListReviewsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Sort"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body$Sort;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body$Sort;

.field public static final enum latest:Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body$Sort;

.field public static final enum points:Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body$Sort;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 120
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body$Sort;

    const-string v1, "latest"

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body$Sort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body$Sort;->latest:Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body$Sort;

    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body$Sort;

    const-string v1, "points"

    invoke-direct {v0, v1, v3}, Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body$Sort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body$Sort;->points:Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body$Sort;

    .line 119
    const/4 v0, 0x2

    new-array v0, v0, [Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body$Sort;

    sget-object v1, Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body$Sort;->latest:Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body$Sort;

    aput-object v1, v0, v2

    sget-object v1, Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body$Sort;->points:Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body$Sort;

    aput-object v1, v0, v3

    sput-object v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body$Sort;->$VALUES:[Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body$Sort;

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
    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body$Sort;
    .locals 1

    .prologue
    .line 119
    const-class v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body$Sort;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body$Sort;

    return-object v0
.end method

.method public static values()[Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body$Sort;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body$Sort;->$VALUES:[Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body$Sort;

    invoke-virtual {v0}, [Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body$Sort;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcm/aptoide/pt/dataprovider/ws/v7/ListReviewsRequest$Body$Sort;

    return-object v0
.end method
