.class public final Lcm/aptoide/pt/navigation/NavigationManagerV4$Builder;
.super Ljava/lang/Object;
.source "NavigationManagerV4.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/navigation/NavigationManagerV4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildWith(Landroid/support/v4/app/u;)Lcm/aptoide/pt/navigation/NavigationManagerV4;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcm/aptoide/pt/navigation/ConcreteNavigationManagerV4;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/navigation/ConcreteNavigationManagerV4;-><init>(Landroid/support/v4/app/u;)V

    return-object v0
.end method
