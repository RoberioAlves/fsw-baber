import { Card, CardContent } from "../card"
import Image from "next/image"

const Header = () => {
  return (
    <Card>
      <CardContent>
        <Image src="/Logofsw.png" alt="Logo SFW" />
      </CardContent>
    </Card>
  )
}

export default Header
