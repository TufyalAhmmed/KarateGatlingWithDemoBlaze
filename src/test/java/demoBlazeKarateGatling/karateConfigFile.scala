package demoBlazeKarateGatling
import com.intuit.karate.gatling.PreDef._
import io.gatling.core.Predef._
import scala.concurrent.duration.DurationInt
import scala.language.postfixOps

class karateConfigFile extends Simulation{

  val Login = scenario("Login").exec(karateFeature("classpath:demoBlazeKarateGatling/demoBlaze-login.feature"))
  val check = scenario("check").exec(karateFeature("classpath:demoBlazeKarateGatling/demoBlaze-check.feature"))
  val entries = scenario("entries").exec(karateFeature("classpath:demoBlazeKarateGatling/demoBlaze-Entries.feature"))
  val bycategory = scenario("bycategory").exec(karateFeature("demoBlazeKarateGatling/demoBlaze-byCart.feature"))

  setUp(
    Login.inject(rampUsers(5)  during(5 seconds)),
    check.inject(rampUsers(5) during(5 seconds)),
    entries.inject(rampUsers(5) during(5 seconds)),
    bycategory.inject(rampUsers(5) during(5 seconds))
  )
}
